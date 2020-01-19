package com.bc.eBookController;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GelXmleBookPlayController")
public class GelXmleBookPlayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String eNum = request.getParameter("eNum");
		String playText = request.getParameter("playText");

		// HttpURLConnection 객체 생성.
		HttpURLConnection conn = null;
		URL url = null;
		String responseData = "";
		String responseMsg = "";
		StringBuffer result = new StringBuffer();
		InputStream is = null;

		System.out.println("변환할 텍스트 : " + playText);

		try {
			url = new URL("https://kakaoi-newtone-openapi.kakao.com/v1/synthesize");
			// URL 연결 (웹페이지 URL 연결.)
			conn = (HttpURLConnection) url.openConnection();
			// 요청 방식 선택 (GET, POST)
			conn.setRequestMethod("POST");
			// Request Header값 셋팅 setRequestProperty(String key, String value)
			conn.setRequestProperty("Content-Type", "application/xml");
			conn.setRequestProperty("Host", "kakaoi-newtone-openapi.kakao.com");
			conn.setRequestProperty("POST", "/v1/synthesize HTTP/1.1");
			conn.setRequestProperty("Authorization", "**********");

			// OutputStream으로 POST 데이터를 넘겨주겠다는 옵션.
			conn.setDoOutput(true);

			// InputStream으로 서버로 부터 응답을 받겠다는 옵션.
			conn.setDoInput(true);

			// Request Body에 Data를 담기위해 OutputStream 객체를 생성.
			OutputStream os = conn.getOutputStream();
			String body = "<speak><voice name=\"WOMAN_READ_CALM\">" + playText + "</voice></speak>";
			// Request Body에 Data 셋팅.
			os.write(body.getBytes("utf-8"));
			// Request Body에 Data 입력.
			os.flush();
			// OutputStream 종료.
			os.close();

			// 실제 서버로 Request 요청 하는 부분. (응답 코드를 받는다. 200 성공, 나머지 에러)
			int responseCode = conn.getResponseCode();
			System.out.println("응답 코드 : " + responseCode);

			if (responseCode == HttpURLConnection.HTTP_OK) {
				// mp3 파일 생성
				is = conn.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];
				
				
				File f = new File("c:/ebook/" + eNum + ".mp3");
				f.createNewFile();
					
				System.out.println("file 경로 : " + f.getAbsolutePath());
				OutputStream outputStream = new FileOutputStream(f);
				while ((read = is.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}
				is.close();

				String TransferEncoding = conn.getHeaderField("Transfer-Encoding");
				System.out.println("TransferEncoding : " + TransferEncoding); // 합성 텍스트를 url-encoding 한 형태. chunked
				String xTextLength = conn.getHeaderField("X-TEXT-LENGTH");
				System.out.println("X-TEXT-LENGTH : " + xTextLength); // 합성 텍스트의 총 글자수
				String xTtsSessionId = conn.getHeaderField("X-TTS-Session-Id");
				System.out.println("X-TTS-Session-Id : " + xTtsSessionId); // 합성 요청에 대한 unique session id
			}

			// 접속해지
			conn.disconnect();

		} catch (Exception e) {
			e.getStackTrace();

		}
		/*
		 * PrintWriter out = response.getWriter(); out.print(responseData);
		 */
	}

}
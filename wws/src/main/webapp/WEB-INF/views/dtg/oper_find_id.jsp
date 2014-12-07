<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    


<div id="container">

    <div id="mmenu_01">
        <div id="mmenu_02">
        </div>
    </div>
    <!-- ----------------------------- //상단 ------------------------------------------- -->
    <!-- ----------------------------- 본문 ------------------------------------------- -->
    <div id="body">
        <div id="body_content">


            <!-- 개인 -->
            <div id="tab_ps_contents" class="cont_241 tab_contents">
                <!-- 가입자정보로 찾기 -->
                <h2 class="mtle_241">가입정보로 찾기</h2>
                <div class="box_241">
                    <form name="frmAuthInfoPS" id="frmAuthInfoPS" method="post" action="/idsearch/?action=authInfo" target="ifmHidden">
                    <input type="hidden" name="userType" value="ps" />
                    <table cellpadding="0" cellspacing="0" class="table_241" style="width:400px; float:left;">
                    <col width="120" /><col>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" class="pwboy h25" name="psName" id="psName" style="width:260px;" /></td>
                    </tr>
                    <tr>
                        <th>생년월일</th>
                        <td>
                            <input type="text" class="pwboy h25" name="psBirthDate1" id="psBirthDate1" style="width:85px; ime-mode:disabled;" /> 년
                            <input type="text" class="pwboy h25" name="psBirthDate2" id="psBirthDate2" style="width:60px; ime-mode:disabled;" /> 월
                            <input type="text" class="pwboy h25" name="psBirthDate3" id="psBirthDate3" style="width:60px; ime-mode:disabled;" /> 일
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" class="pwboy h25" name="psEmail" id="psEmail" style="width:260px;" /></td>
                    </tr>
                    </table>
                    <div style="float:right; padding:35px 0 0 0;">
                        <input type="image" src="https://img.cafe24.com/images/cafe24_member/btn_confirm_241.gif" id="btnAuthInfoPS" class="t" alt="확인">
                    </div>
                    </form>
                </div>
            </div>
            <!-- //개인 -->

        </div>
    </div>
    <!-- ----------------------------- //본문 ------------------------------------------- -->
</div>

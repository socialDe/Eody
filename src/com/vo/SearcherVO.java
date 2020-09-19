package com.vo;

public class SearcherVO {
        private String searcher_id;
        private String searcher_pwd;
        private String searcher_name;
        private String searcher_address;
        private String searcher_phone;
        private String searcher_nickname;
        private String searcher_birthday;
        private String searcher_email;
        private String searcher_gender;
        public SearcherVO() {
        }
        public SearcherVO(String searcher_id, String searcher_pwd, String searcher_name, String searcher_address,
                        String searcher_phone, String searcher_nickname, String searcher_birthday, String searcher_email,
                        String searcher_gender) {
                this.searcher_id = searcher_id;
                this.searcher_pwd = searcher_pwd;
                this.searcher_name = searcher_name;
                this.searcher_address = searcher_address;
                this.searcher_phone = searcher_phone;
                this.searcher_nickname = searcher_nickname;
                this.searcher_birthday = searcher_birthday;
                this.searcher_email = searcher_email;
                this.searcher_gender = searcher_gender;
        }
        public String getSearcher_id() {
                return searcher_id;
        }
        public void setSearcher_id(String searcher_id) {
                this.searcher_id = searcher_id;
        }
        public String getSearcher_pwd() {
                return searcher_pwd;
        }
        public void setSearcher_pwd(String searcher_pwd) {
                this.searcher_pwd = searcher_pwd;
        }
        public String getSearcher_name() {
                return searcher_name;
        }
        public void setSearcher_name(String searcher_name) {
                this.searcher_name = searcher_name;
        }
        public String getSearcher_address() {
                return searcher_address;
        }
        public void setSearcher_address(String searcher_address) {
                this.searcher_address = searcher_address;
        }
        public String getSearcher_phone() {
                return searcher_phone;
        }
        public void setSearcher_phone(String searcher_phone) {
                this.searcher_phone = searcher_phone;
        }
        public String getSearcher_nickname() {
                return searcher_nickname;
        }
        public void setSearcher_nickname(String searcher_nickname) {
                this.searcher_nickname = searcher_nickname;
        }
        public String getSearcher_birthday() {
                return searcher_birthday;
        }
        public void setSearcher_birthday(String searcher_birthday) {
                this.searcher_birthday = searcher_birthday;
        }
        public String getSearcher_email() {
                return searcher_email;
        }
        public void setSearcher_email(String searcher_email) {
                this.searcher_email = searcher_email;
        }
        public String getSearcher_gender() {
                return searcher_gender;
        }
        public void setSearcher_gender(String searcher_gender) {
                this.searcher_gender = searcher_gender;
        }
        @Override
        public String toString() {
                return "SearcherVO [searcher_id=" + searcher_id + ", searcher_pwd=" + searcher_pwd + ", searcher_name="
                                + searcher_name + ", searcher_address=" + searcher_address + ", searcher_phone=" + searcher_phone
                                + ", searcher_nickname=" + searcher_nickname + ", searcher_birthday=" + searcher_birthday
                                + ", searcher_email=" + searcher_email + ", searcher_gender=" + searcher_gender + "]";
        }
}
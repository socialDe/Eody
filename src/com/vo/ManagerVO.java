package com.vo;

public class ManagerVO {
        private String manager_id;
        private String manager_pwd;
        private String manager_name;
        private String manager_address;
        private String manager_phone;
        private String manager_nickname;
        private String manager_birthday;
        private String manager_email;
        private String manager_gender;
        public ManagerVO() {
        }
		public ManagerVO(String manager_id, String manager_pwd, String manager_name, String manager_address,
				String manager_phone, String manager_nickname, String manager_birthday, String manager_email,
				String manager_gender) {
			super();
			this.manager_id = manager_id;
			this.manager_pwd = manager_pwd;
			this.manager_name = manager_name;
			this.manager_address = manager_address;
			this.manager_phone = manager_phone;
			this.manager_nickname = manager_nickname;
			this.manager_birthday = manager_birthday;
			this.manager_email = manager_email;
			this.manager_gender = manager_gender;
		}
		public String getManager_id() {
			return manager_id;
		}
		public void setManager_id(String manager_id) {
			this.manager_id = manager_id;
		}
		public String getManager_pwd() {
			return manager_pwd;
		}
		public void setManager_pwd(String manager_pwd) {
			this.manager_pwd = manager_pwd;
		}
		public String getManager_name() {
			return manager_name;
		}
		public void setManager_name(String manager_name) {
			this.manager_name = manager_name;
		}
		public String getManager_address() {
			return manager_address;
		}
		public void setManager_address(String manager_address) {
			this.manager_address = manager_address;
		}
		public String getManager_phone() {
			return manager_phone;
		}
		public void setManager_phone(String manager_phone) {
			this.manager_phone = manager_phone;
		}
		public String getManager_nickname() {
			return manager_nickname;
		}
		public void setManager_nickname(String manager_nickname) {
			this.manager_nickname = manager_nickname;
		}
		public String getManager_birthday() {
			return manager_birthday;
		}
		public void setManager_birthday(String manager_birthday) {
			this.manager_birthday = manager_birthday;
		}
		public String getManager_email() {
			return manager_email;
		}
		public void setManager_email(String manager_email) {
			this.manager_email = manager_email;
		}
		public String getManager_gender() {
			return manager_gender;
		}
		public void setManager_gender(String manager_gender) {
			this.manager_gender = manager_gender;
		}
		@Override
		public String toString() {
			return "ManagerVO [manager_id=" + manager_id + ", manager_pwd=" + manager_pwd + ", manager_name="
					+ manager_name + ", manager_address=" + manager_address + ", manager_phone=" + manager_phone
					+ ", manager_nickname=" + manager_nickname + ", manager_birthday=" + manager_birthday
					+ ", manager_email=" + manager_email + ", manager_gender=" + manager_gender + "]";
		}
        
}
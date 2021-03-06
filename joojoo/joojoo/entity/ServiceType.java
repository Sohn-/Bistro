package joojoo.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 새 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class ServiceType implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** service_type_code. */
	private Integer serviceTypeCode;

	/** service_type_name. */
	private String serviceTypeName;

	/** 새 테이블 목록. */
	private Set<EventComment> eventCommentSet;

	/**
	 * 생성자.
	 */
	public ServiceType() {
		this.eventCommentSet = new HashSet<EventComment>();
	}

	/**
	 * service_type_code을 설정합니다..
	 * 
	 * @param serviceTypeCode
	 *            service_type_code
	 */
	public void setServiceTypeCode(Integer serviceTypeCode) {
		this.serviceTypeCode = serviceTypeCode;
	}

	/**
	 * service_type_code을 가져옵니다..
	 * 
	 * @return service_type_code
	 */
	public Integer getServiceTypeCode() {
		return this.serviceTypeCode;
	}

	/**
	 * service_type_name을 설정합니다..
	 * 
	 * @param serviceTypeName
	 *            service_type_name
	 */
	public void setServiceTypeName(String serviceTypeName) {
		this.serviceTypeName = serviceTypeName;
	}

	/**
	 * service_type_name을 가져옵니다..
	 * 
	 * @return service_type_name
	 */
	public String getServiceTypeName() {
		return this.serviceTypeName;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param eventCommentSet
	 *            새 테이블 목록
	 */
	public void setEventCommentSet(Set<EventComment> eventCommentSet) {
		this.eventCommentSet = eventCommentSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param eventComment
	 *            새 테이블
	 */
	public void addEventComment(EventComment eventComment) {
		this.eventCommentSet.add(eventComment);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<EventComment> getEventCommentSet() {
		return this.eventCommentSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((serviceTypeCode == null) ? 0 : serviceTypeCode.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		ServiceType other = (ServiceType) obj;
		if (serviceTypeCode == null) {
			if (other.serviceTypeCode != null) {
				return false;
			}
		} else if (!serviceTypeCode.equals(other.serviceTypeCode)) {
			return false;
		}
		return true;
	}

}

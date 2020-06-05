package persistance;

public class FacilityChargeDiscountDTO {
	private int chargeID;
	private String discountReason[];
	public FacilityChargeDiscountDTO(int chargeID, String[] discountReason, int[] discountRate) {
		super();
		this.chargeID = chargeID;
		this.discountReason = discountReason;
		this.discountRate = discountRate;
	}
	private int discountRate[];
	
	public int getChargeID() {
		return chargeID;
	}
	public void setChargeID(int chargeID) {
		this.chargeID = chargeID;
	}
	public String[] getDiscountReason() {
		return discountReason;
	}
	public void setDiscountReason(String[] discountReason) {
		this.discountReason = discountReason;
	}
	public int[] getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int[] discountRate) {
		this.discountRate = discountRate;
	}
}

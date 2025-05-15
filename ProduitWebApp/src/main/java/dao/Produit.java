package dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data; // This includes @Getter, @Setter, @ToString, @EqualsAndHashCode, @RequiredArgsConstructor
import lombok.NoArgsConstructor;

@Data // This annotation is key!
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
public class Produit {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ref; // ID field
	@Column (length = 20)
	private String designation;
	private double pu;
	private int qtestock;
}
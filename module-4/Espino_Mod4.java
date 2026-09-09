package Espino_Mod4;

import java.io.Serializable;

public class BookRecordBean implements Serializable {
  private static final long serialVersionUID = 1L;

  private String bookTitle;
  private String category;
  private String overallDesc;

  private String author;
  private String publicationYear;
  private String mainCharacter;
  private String primarySetting;
  private String genre;

  public BookRecordBean() {
  }


  public String getBookTitle() { return bookTitle; }
  public void setBookTitle(String bookTitle) { this.bookTitle = bookTitle; }

  public String getCategory() { return category; }
  public void setCategory(String category) { this.category = category; }

  public String getOverallDesc() { return overallDesc; }
  public void setOverallDesc(String overallDesc) { this.overallDesc = overallDesc; }


  public String getAuthor() { return author; }
  public void setAuthor(String author) { this.author = author; }

  public String getPublicationYear() { return publicationYear; }
  public void setPublicationYear(String publicationYear) { this.publicationYear = publicationYear; }

  public String getMainCharacter() { return mainCharacter; }
  public void setMainCharacter(String mainCharacter) { this.mainCharacter = mainCharacter; }

  public String getPrimarySetting() { return primarySetting; }
  public void setPrimarySetting(String primarySetting) { this.primarySetting = primarySetting; }

  public String getGenre() { return genre; }
  public void setGenre(String genre) { this.genre = genre; }
}
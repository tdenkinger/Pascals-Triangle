describe "PTRI" do
  context "with small values" do
    it "returns a single item array for row 1" do
      PTRI.row(1).should have(1).items
    end

    it "returns an array of [1] for row 1" do 
      PTRI.row(1).should =~ [1]
    end

    it "returns an array of [1,1] for row 2" do
      PTRI.row(2).should =~ [1,1]
    end
    
    it "returns an array of [1,2,1] for row 3" do
      PTRI.row(3).should =~ [1,2,1]
    end

    it "returns an array of [1,3,3,1] for row 4" do
      PTRI.row(4).should =~ [1,3,3,1]
    end

    it "returns an array of [1,4,6,4,1] for row 5" do
      PTRI.row(5).should =~ [1,4,6,4,1]
    end
  end

  context "with large values" do
    it "returns an array of 50 elements for row 50" do
      PTRI.row(50).count.should == 50 
    end

    it "returns and array of 71 elements for row 71" do
      PTRI.row(71).count.should == 71
    end
  end
end



class ExpenseReportsController < ApplicationController
  # GET /expense_reports
  # GET /expense_reports.json
require 'mysql'
  def index
    @expense_reports = ExpenseReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expense_reports }
    end
  end

  # GET /expense_reports/1
  # GET /expense_reports/1.json
  def show
    @expense_report = ExpenseReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expense_report }
    end
  end

  # GET /expense_reports/new
  # GET /expense_reports/new.json
  def new
    @expense_report = ExpenseReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expense_report }
    end
  end

  # GET /expense_reports/1/edit
  def edit
    @expense_report = ExpenseReport.find(params[:id])
  end

  # POST /expense_reports
  # POST /expense_reports.json
  def create
    @expense_report = ExpenseReport.new(params[:expense_report])
    respond_to do |format|
      if @expense_report.save
        format.html { redirect_to @expense_report, notice: 'Expense report was successfully created.' }
        format.json { render json: @expense_report, status: :created, location: @expense_report }
      else
        format.html { render action: "new" }
        format.json { render json: @expense_report.errors, status: :unprocessable_entity }
      end
    end
begin 
con = Mysql.new '10.0.0.90','rzhang','onecare', 'worksheet'
name = params[:employee]
cost = params[:division][:division]
div = params[:Department][:Department]
from = params[:From][:From]
to = params[:To][:To]
bp = params[:Business_Purpose][:Business_Purpose]
date1 = params[:Date1][:Date1]
date2= params[:Date2][:Date2]
date3 = params[:Date3][:Date3]
date4 = params[:Date4][:Date4]
date5 = params[:Date5][:Date5]
date6 = params[:Date6][:Date6]
date7 = params[:Date7][:Date7]
dates = [date1,date2,date3,date4,date5,date6,date7]

amount1 = params[:Amount1][:Amount1]
amount2 = params[:Amount2][:Amount2]
amount3 = params[:Amount3][:Amount3]
amount4 = params[:Amount4][:Amount4]
amount5 = params[:Amount5][:Amount5]
amount6 = params[:Amount6][:Amount6]
amount7 = params[:Amount7][:Amount7]
amounts = [amount1, amount2, amount3, amount4, amount5, amount6, amount7]

airfare1 = params[:Airfare1][:Airfare1]
airfare2 = params[:Airfare2][:Airfare2]
airfare3 = params[:Airfare3][:Airfare3]
airfare4 = params[:Airfare4][:Airfare4]
airfare5 = params[:Airfare5][:Airfare5]
airfare6 = params[:Airfare6][:Airfare6]
airfare7 = params[:Airfare7][:Airfare7]
airfares = [airfare1,airfare2,airfare3,airfare4,airfare5,airfare6,airfare7]

taxi1 = params[:Taxi1][:Taxi1]
taxi2 = params[:Taxi2][:Taxi2]
taxi3 = params[:Taxi3][:Taxi3]
taxi4 = params[:Taxi4][:Taxi4]
taxi5 = params[:Taxi5][:Taxi5]
taxi6 = params[:Taxi6][:Taxi6]
taxi7 = params[:Taxi7][:Taxi7]
taxis = [taxi1,taxi2,taxi3,taxi4,taxi5,taxi6,taxi7]

toll1 = params[:Tolls1][:Tolls1]
toll2 = params[:Tolls2][:Tolls2]
toll3 = params[:Tolls3][:Tolls3]
toll4 = params[:Tolls4][:Tolls4]
toll5 = params[:Tolls5][:Tolls5]
toll6 = params[:Tolls6][:Tolls6]
toll7 = params[:Tolls7][:Tolls7]
tolls = [toll1,toll2,toll3,toll4,toll5,toll6,toll7]

car1 = params[:Car1][:Car1]
car2 = params[:Car2][:Car2]
car3 = params[:Car3][:Car3]
car4 = params[:Car4][:Car4]
car5 = params[:Car5][:Car5]
car6 = params[:Car6][:Car6]
car7 = params[:Car7][:Car7]
cars = [car1,car2,car3,car4,car5,car6,car7]

gas1 = params[:Gas1][:Gas1]
gas2 = params[:Gas2][:Gas2]
gas3 = params[:Gas3][:Gas3]
gas4 = params[:Gas4][:Gas4]
gas5 = params[:Gas5][:Gas5]
gas6 = params[:Gas6][:Gas6]
gas7 = params[:Gas7][:Gas7]
gas = [gas1,gas2,gas3,gas4,gas5,gas6,gas7]

hotel1 = params[:Hotel1][:Hotel1]
hotel2 = params[:Hotel2][:Hotel2]
hotel3 = params[:Hotel3][:Hotel3]
hotel4 = params[:Hotel4][:Hotel4]
hotel5 = params[:Hotel5][:Hotel5]
hotel6 = params[:Hotel6][:Hotel6]
hotel7 = params[:Hotel7][:Hotel7]
hotels = [hotel1,hotel2,hotel3,hotel4,hotel5,hotel6,hotel7]

other1 = params[:Other1][:Other1]
other2 = params[:Other2][:Other2]
other3 = params[:Other3][:Other3]
other4 = params[:Other4][:Other4]
other5 = params[:Other5][:Other5]
other6 = params[:Other6][:Other6]
other7 = params[:Other7][:Other7]
others = [other1,other2,other3,other4,other5,other6,other7]

breakfast1 = params[:Breakfast1][:Breakfast1]
breakfast2 = params[:Breakfast2][:Breakfast2]
breakfast3 = params[:Breakfast3][:Breakfast3]
breakfast4 = params[:Breakfast4][:Breakfast4]
breakfast5 = params[:Breakfast5][:Breakfast5]
breakfast6 = params[:Breakfast6][:Breakfast6]
breakfast7 = params[:Breakfast7][:Breakfast7]
breakfasts  =[breakfast1,breakfast2,breakfast3,breakfast4,breakfast5,breakfast6,breakfast7]

lunch1 = params[:Lunch1][:Lunch1]
lunch2 = params[:Lunch2][:Lunch2]
lunch3 = params[:Lunch3][:Lunch3]
lunch4 = params[:Lunch4][:Lunch4]
lunch5 = params[:Lunch5][:Lunch5]
lunch6 = params[:Lunch6][:Lunch6]
lunch7 = params[:Lunch7][:Lunch7]
lunchs = [lunch1,lunch2,lunch3,lunch4,lunch5,lunch6,lunch7]

dinner1 = params[:Dinner1][:Dinner1]
dinner2 = params[:Dinner2][:Dinner2]
dinner3 = params[:Dinner3][:Dinner3]
dinner4 = params[:Dinner4][:Dinner4]
dinner5 = params[:Dinner5][:Dinner5]
dinner6 = params[:Dinner6][:Dinner6]
dinner7 = params[:Dinner7][:Dinner7]
dinners = [dinner1,dinner2,dinner3,dinner4,dinner5,dinner6,dinner7]

bm1 = params[:BM1][:BM1]
bm2 = params[:BM2][:BM2]
bm3 = params[:BM3][:BM3]
bm4 = params[:BM4][:BM4]
bm5 = params[:BM5][:BM5]
bm6 = params[:BM6][:BM6]
bm7 = params[:BM7][:BM7]
bms = [bm1,bm2,bm3,bm4,bm5,bm6,bm7]

e1 = params[:E1][:E1]
e2 = params[:E2][:E2]
e3 = params[:E3][:E3]
e4 = params[:E4][:E4]
e5 = params[:E5][:E5]
e6 = params[:E6][:E6]
e7 = params[:E7][:E7]
es = [e1,e2,e3,e4,e5,e6,e7]

c1 = params[:C1][:C1]
c2 = params[:C2][:C2]
c3 = params[:C3][:C3]
c4 = params[:C4][:C4]
c5 = params[:C5][:C5]
c6 = params[:C6][:C6]
c7 = params[:C7][:C7]
cs = [c1,c2,c3,c4,c5,c6,c7]

o1 = params[:O1][:O1]
o2 = params[:O2][:O2]
o3 = params[:O3][:O3]
o4 = params[:O4][:O4]
o5 = params[:O5][:O5]
o6 = params[:O6][:O6]
o7 = params[:O7][:O7]
o = [o1,o2,o3,o4,o5,o6,o7]

p1 = params[:P1][:P1]
p2 = params[:P2][:P2]
p3 = params[:P3][:P3]
p4 = params[:P4][:P4]
p5 = params[:P5][:P5]
p6 = params[:P6][:P6]
p7 = params[:P7][:P7]
ps = [p1,p2,p3,p4,p5,p6,p7]

os1 = params[:OS1][:OS1]
os2 = params[:OS2][:OS2]
os3 = params[:OS3][:OS3]
os4 = params[:OS4][:OS4]
os5 = params[:OS5][:OS5]
os6 = params[:OS6][:OS6]
os7 = params[:OS7][:OS7]
os = [os1,os2,os3,os4,os5,os6,os7]

cp1= params[:CP1][:CP1]
cp2= params[:CP2][:CP2]
cp3= params[:CP3][:CP3]
cp4= params[:CP4][:CP4]
cp5= params[:CP5][:CP5]
cp6= params[:CP6][:CP6]
cp7= params[:CP7][:CP7]
cp = [cp1,cp2,cp3,cp4,cp5,cp6,cp7]

d1 = params[:D1][:D1]
d2 = params[:D2][:D2]
d3 = params[:D3][:D3]
d4 = params[:D4][:D4]
d5 = params[:D5][:D5]
d6 = params[:D6][:D6]
d7 = params[:D7][:D7]
ds = [d1,d2,d3,d4,d5,d6,d7]

n1 = params[:N1][:N1]
n2 = params[:N2][:N2]
n3 = params[:N3][:N3]
n4 = params[:N4][:N4]
n5 = params[:N5][:N5]
n6 = params[:N6][:N6]
n7 = params[:N7][:N7]
ns = [n1,n2,n3,n4,n5,n6,n7]

purpose1 = params[:Purpose1][:Purpose1]
purpose2 = params[:Purpose2][:Purpose2]
purpose3 = params[:Purpose3][:Purpose3]
purpose4 = params[:Purpose4][:Purpose4]
purpose5 = params[:Purpose5][:Purpose5]
purpose6 = params[:Purpose6][:Purpose6]
purpose7 = params[:Purpose7][:Purpose7]
purposes = [purpose1,purpose2,purpose3,purpose4,purpose5,purpose6,purpose7]


$x = 0
while $x<7 do
rs = con.query 'INSERT INTO expense_reports VALUES ("'+name+'", "'+cost+'", "'+div+'","'+from+'","'+to+'","'+bp+'", "'+dates[$x]+'","'+amounts[$x]+'","'+airfares[$x]+'","'+taxis[$x]+'","'+ tolls[$x]+'","'+cars[$x]+'","'+gas[$x]+'","'+hotels[$x]+'","'+others[$x]+'","'+breakfasts[$x]+'","'+lunchs[$x]+'","'+dinners[$x]+'","'+bms[$x]+'","'+es[$x]+'","'+cs[$x]+'","'+o[$x]+'","'+ps[$x]+'","'+os[$x]+'","'+cp[$x]+'","'+ds[$x]+'","'+ns[$x]+'","'+purposes[$x]+'")' 
$x+=1
end
      
con.close if con
end
  end

  # PUT /expense_reports/1
  # PUT /expense_reports/1.json
  def update
    @expense_report = ExpenseReport.find(params[:id])

    respond_to do |format|
      if @expense_report.update_attributes(params[:expense_report])
        format.html { redirect_to @expense_report, notice: 'Expense report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expense_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_reports/1
  # DELETE /expense_reports/1.json
  def destroy
    @expense_report = ExpenseReport.find(params[:id])
    @expense_report.destroy

    respond_to do |format|
      format.html { redirect_to expense_reports_url }
      format.json { head :no_content }
    end
  end
end

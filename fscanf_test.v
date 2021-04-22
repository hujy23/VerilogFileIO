`define NULL 0
module file_scanf;
integer fp_r,fp_w;
integer flag1,flag2;
reg [3:0] bin;
reg [7:0] data_in [15:0];  //data_in的宽度决定了$fscanf读取多宽
// reg [15:0] data_in [15:0];
// reg [31:0] data_in [15:0];
reg [15:0] cnt = 0;
initial
begin: file_fscanf
    fp_r = $fopen("data_in.txt","r");
    fp_w = $fopen("data_out.txt","w");

    if(fp_r == `NULL)
        $display("fail to open data_in.txt ");
    if(fp_w == `NULL)
        $display("fail to open data_out.txt ");

    // data_in[0~15]
    repeat(16)
    begin
        flag1 = $fscanf(fp_r,"%h",data_in[cnt]);
        if (!flag1)
            $display("fail to read from data_in.txt ");
        // $fscanf(fp_r,"%h",data_in[cnt]);  //可以不需要使用$fscanf的返回值
        $display("data_in[%d]=%h ",cnt,data_in[cnt]);
        $fdisplay(fp_w,"%h",data_in[cnt]);
        cnt = cnt+1;
    end
$fclose(fp_w);
$fclose(fp_r);
end
endmodule
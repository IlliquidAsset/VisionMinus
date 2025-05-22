.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;
.super Ljava/lang/Object;
.source "AirLapseFreeView.java"

# interfaces
.implements Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 1

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemSelected: wheelSpeed index = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirLapseView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sput p2, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->speedIndex:I

    int-to-float p1, p2

    const p2, 0x3dcccccd    # 0.1f

    mul-float p1, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    .line 210
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->formatFloat(F)Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {p2, v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1502(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;F)F

    .line 212
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;->onSpeedSelected(F)V

    :cond_0
    return-void
.end method

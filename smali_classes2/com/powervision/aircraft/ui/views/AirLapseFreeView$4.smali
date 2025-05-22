.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;
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

    .line 183
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 6

    .line 186
    sput p2, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->lengthIndex:I

    .line 187
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$702(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;I)I

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected: ----- currentInterval = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentLength = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AirLapseView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$900(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_2:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$900(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_94:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1000(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$900(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->lapse_time_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v5}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v5

    mul-int p2, p2, v5

    mul-int/lit8 p2, p2, 0x1e

    invoke-static {p2}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$900(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->lapse_num_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1200(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v0

    mul-int p2, p2, v0

    mul-int/lit8 p2, p2, 0x1e

    invoke-static {p2}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1400(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/FlightLogUtil;->getRemainingFlightTime()D

    move-result-wide p1

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x1e

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_95_12_1:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1400(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;->onSelected(II)V

    :cond_1
    return-void
.end method

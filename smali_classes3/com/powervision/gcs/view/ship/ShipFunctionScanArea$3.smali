.class Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;
.super Ljava/lang/Object;
.source "ShipFunctionScanArea.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged ss: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ShipFunctionScanArea"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x6

    .line 153
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextSpacing:Landroid/widget/TextView;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->access$100(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->scan_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onScanDistanceChanged(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

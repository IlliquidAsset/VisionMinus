.class Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;
.super Ljava/lang/Object;
.source "ShipFunctionAirlineSche.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    iget-object p2, p2, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->airlineSpeed:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x28

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onSpeedChanged(I)V

    :cond_0
    return-void
.end method

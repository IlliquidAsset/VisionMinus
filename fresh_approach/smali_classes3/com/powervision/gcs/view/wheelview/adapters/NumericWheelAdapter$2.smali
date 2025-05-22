.class Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$2;
.super Landroid/database/DataSetObserver;
.source "NumericWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$2;->this$0:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$2;->this$0:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->access$002(Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;I)I

    return-void
.end method

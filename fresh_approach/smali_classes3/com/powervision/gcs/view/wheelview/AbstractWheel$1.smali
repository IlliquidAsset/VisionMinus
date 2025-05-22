.class Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;
.super Landroid/database/DataSetObserver;
.source "AbstractWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method

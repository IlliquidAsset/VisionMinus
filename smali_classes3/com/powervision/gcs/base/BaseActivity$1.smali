.class Lcom/powervision/gcs/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/base/BaseActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/base/BaseActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseActivity$1;->this$0:Lcom/powervision/gcs/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity$1;->this$0:Lcom/powervision/gcs/base/BaseActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/base/BaseActivity;->onBackPressed()V

    return-void
.end method

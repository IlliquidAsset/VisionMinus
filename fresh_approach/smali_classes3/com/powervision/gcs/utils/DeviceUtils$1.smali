.class Lcom/powervision/gcs/utils/DeviceUtils$1;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/DeviceUtils;->isSoftKeyAvail(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/DeviceUtils;

.field final synthetic val$activityRootView:Landroid/view/View;

.field final synthetic val$isSoftkey:[Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/DeviceUtils;Landroid/view/View;[Z)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->this$0:Lcom/powervision/gcs/utils/DeviceUtils;

    iput-object p2, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->val$activityRootView:Landroid/view/View;

    iput-object p3, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->val$isSoftkey:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/powervision/gcs/utils/DeviceUtils$1;->val$isSoftkey:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_0
    return-void
.end method

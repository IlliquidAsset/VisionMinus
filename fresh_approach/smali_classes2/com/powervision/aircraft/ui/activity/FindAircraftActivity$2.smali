.class Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;
.super Ljava/lang/Object;
.source "FindAircraftActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showAircraftInfoPopWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;Landroid/view/View;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

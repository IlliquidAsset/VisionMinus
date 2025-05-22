.class Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$1;
.super Ljava/lang/Object;
.source "FindAircraftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$000(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

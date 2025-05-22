.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 3927
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3930
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    .line 3931
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 3932
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    .line 3933
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 3934
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    .line 3935
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object p1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setZ(F)V

    return-void
.end method

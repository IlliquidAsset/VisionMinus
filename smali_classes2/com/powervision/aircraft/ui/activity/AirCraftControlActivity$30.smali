.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
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

    .line 4142
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 4145
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 4146
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 4147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4148
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    :cond_0
    return-void
.end method

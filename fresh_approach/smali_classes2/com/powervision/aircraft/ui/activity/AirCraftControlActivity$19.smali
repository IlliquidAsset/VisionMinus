.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/imap/OnAirMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setOnAirMapClickListener()V
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

    .line 3371
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirMapClick(DD)V
    .locals 2

    .line 3374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatLng"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "  --  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AirCraftCo"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 3376
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 3377
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3378
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    :cond_0
    return-void
.end method

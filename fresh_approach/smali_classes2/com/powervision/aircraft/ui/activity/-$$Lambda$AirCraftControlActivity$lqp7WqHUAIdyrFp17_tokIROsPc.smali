.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$onDeviceLockStateChange$37$AirCraftControlActivity(Z)V

    return-void
.end method

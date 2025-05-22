.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$1:F

    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$1:F

    iget-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$setGimbalViewYaw$29$AirCraftControlActivity(FZ)V

    return-void
.end method

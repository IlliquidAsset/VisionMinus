.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;->f$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    iput p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;->f$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    iget v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->lambda$updateCurrentState$0$DeviceMediaActivity(I)V

    return-void
.end method

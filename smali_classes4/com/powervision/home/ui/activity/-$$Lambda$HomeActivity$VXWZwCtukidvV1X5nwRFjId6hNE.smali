.class public final synthetic Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$VXWZwCtukidvV1X5nwRFjId6hNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$VXWZwCtukidvV1X5nwRFjId6hNE;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$VXWZwCtukidvV1X5nwRFjId6hNE;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->lambda$restartApp$3$HomeActivity()V

    return-void
.end method

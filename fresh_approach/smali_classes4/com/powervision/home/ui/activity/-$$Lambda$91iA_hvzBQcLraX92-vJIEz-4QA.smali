.class public final synthetic Lcom/powervision/home/ui/activity/-$$Lambda$91iA_hvzBQcLraX92-vJIEz-4QA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$91iA_hvzBQcLraX92-vJIEz-4QA;->f$0:Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/-$$Lambda$91iA_hvzBQcLraX92-vJIEz-4QA;->f$0:Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

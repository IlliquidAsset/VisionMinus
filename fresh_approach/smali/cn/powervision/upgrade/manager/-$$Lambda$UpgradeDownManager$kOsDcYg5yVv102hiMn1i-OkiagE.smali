.class public final synthetic Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcn/powervision/upgrade/manager/UpgradeDownManager;Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    iput-object p2, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$1:Ljava/io/File;

    iput-wide p3, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    iget-object v1, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$1:Ljava/io/File;

    iget-wide v2, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;->f$2:J

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/powervision/upgrade/manager/UpgradeDownManager;->lambda$startDown$0$UpgradeDownManager(Ljava/io/File;JLokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

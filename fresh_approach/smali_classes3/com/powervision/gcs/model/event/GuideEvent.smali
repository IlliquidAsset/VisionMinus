.class public Lcom/powervision/gcs/model/event/GuideEvent;
.super Ljava/lang/Object;
.source "GuideEvent.java"


# instance fields
.field private beans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/event/GuideEvent;->beans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/event/GuideEvent;->beans:Ljava/util/List;

    return-object v0
.end method

.method public setBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/event/GuideEvent;->beans:Ljava/util/List;

    return-void
.end method

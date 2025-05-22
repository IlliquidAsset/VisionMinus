.class abstract Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;
.super Ljava/lang/Object;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/wrappers/AnalySDKWrapper$Committer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SubClass:",
        "Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/wrappers/AnalySDKWrapper$Committer;"
    }
.end annotation


# instance fields
.field protected map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public setField(Ljava/lang/Object;)Lcom/mob/wrappers/AnalySDKWrapper$MapItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/mob/wrappers/AnalySDKWrapper$MapItem<",
            "TSubClass;TK;TV;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;-><init>(Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;Ljava/lang/Object;Lcom/mob/wrappers/AnalySDKWrapper$1;)V

    return-object v0
.end method

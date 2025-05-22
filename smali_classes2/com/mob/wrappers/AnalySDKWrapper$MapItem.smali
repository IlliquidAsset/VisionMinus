.class public final Lcom/mob/wrappers/AnalySDKWrapper$MapItem;
.super Ljava/lang/Object;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CreatorClass:",
        "Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/proguard/PublicMemberKeeper;"
    }
.end annotation


# instance fields
.field private creator:Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;

.field private fieldName:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;",
            "TK;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;->creator:Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;

    .line 81
    iput-object p2, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;->fieldName:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;Ljava/lang/Object;Lcom/mob/wrappers/AnalySDKWrapper$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;-><init>(Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public widthValue(Ljava/lang/Object;)Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TCreatorClass;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;->creator:Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;

    iget-object v0, v0, Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;->map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;->fieldName:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$MapItem;->creator:Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;

    return-object p1
.end method

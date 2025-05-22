.class public final enum Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;
.super Ljava/lang/Enum;
.source "AnalySDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenderWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

.field public static final enum Man:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

.field public static final enum Woman:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 211
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    const-string v1, "Man"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->Man:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    .line 212
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    const-string v1, "Woman"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->Woman:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    .line 210
    sget-object v4, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->Man:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->$VALUES:[Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;
    .locals 1

    .line 210
    const-class v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    return-object p0
.end method

.method public static values()[Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;
    .locals 1

    .line 210
    sget-object v0, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->$VALUES:[Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    invoke-virtual {v0}, [Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    return-object v0
.end method

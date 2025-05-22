.class public final enum Lcom/powervision/gcs/utils/StretchAnimation$TYPE;
.super Ljava/lang/Enum;
.source "StretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/StretchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/utils/StretchAnimation$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

.field public static final enum horizontal:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

.field public static final enum vertical:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    const-string v1, "horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->horizontal:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    .line 29
    new-instance v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    const-string v1, "vertical"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->vertical:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    .line 27
    sget-object v4, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->horizontal:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->$VALUES:[Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/utils/StretchAnimation$TYPE;
    .locals 1

    .line 27
    const-class v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/utils/StretchAnimation$TYPE;
    .locals 1

    .line 27
    sget-object v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->$VALUES:[Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    invoke-virtual {v0}, [Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    return-object v0
.end method

.class public final enum Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;
.super Ljava/lang/Enum;
.source "UltraViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmall/ultraviewpager/UltraViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

.field public static final enum HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

.field public static final enum VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    .line 70
    sget-object v4, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;
    .locals 1

    .line 70
    const-class v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;
    .locals 1

    .line 70
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    invoke-virtual {v0}, [Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    return-object v0
.end method

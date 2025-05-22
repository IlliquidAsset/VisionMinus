.class public final enum Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
.super Ljava/lang/Enum;
.source "UltraViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmall/ultraviewpager/UltraViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

.field public static final enum HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

.field public static final enum VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    .line 53
    sget-object v4, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->id:I

    return-void
.end method

.method static getScrollMode(I)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
    .locals 5

    .line 62
    invoke-static {}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->values()[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    iget v4, v3, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
    .locals 1

    .line 53
    const-class v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
    .locals 1

    .line 53
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    invoke-virtual {v0}, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    return-object v0
.end method

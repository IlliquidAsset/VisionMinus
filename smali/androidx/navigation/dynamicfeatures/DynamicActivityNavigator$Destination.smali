.class public final Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
.super Landroidx/navigation/ActivityNavigator$Destination;
.source "DynamicActivityNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicActivityNavigator.kt\nandroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,100:1\n55#2,6:101\n*E\n*S KotlinDebug\n*F\n+ 1 DynamicActivityNavigator.kt\nandroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination\n*L\n94#1,6:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "(Landroidx/navigation/NavigatorProvider;)V",
        "activityNavigator",
        "Landroidx/navigation/Navigator;",
        "(Landroidx/navigation/Navigator;)V",
        "moduleName",
        "",
        "getModuleName",
        "()Ljava/lang/String;",
        "setModuleName",
        "(Ljava/lang/String;)V",
        "onInflate",
        "",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/ActivityNavigator$Destination;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 1

    const-string v0, "navigatorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/NavigatorProvider;)V

    return-void
.end method


# virtual methods
.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/navigation/ActivityNavigator$Destination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    sget-object v0, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicActivityNavigator:[I

    const-string v1, "R.styleable.DynamicActivityNavigator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    sget p2, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicActivityNavigator_moduleName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->moduleName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->moduleName:Ljava/lang/String;

    return-void
.end method

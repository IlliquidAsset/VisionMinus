.class public final Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicActivityNavigatorDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicActivityNavigatorDestinationBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder\n*L\n1#1,84:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010 \u001a\u00020!H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\rR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000b\"\u0004\u0008\u001c\u0010\rR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000b\"\u0004\u0008\u001f\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "activityNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;",
        "id",
        "",
        "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V",
        "action",
        "",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "(Ljava/lang/String;)V",
        "activityClassName",
        "getActivityClassName",
        "setActivityClassName",
        "data",
        "Landroid/net/Uri;",
        "getData",
        "()Landroid/net/Uri;",
        "setData",
        "(Landroid/net/Uri;)V",
        "dataPattern",
        "getDataPattern",
        "setDataPattern",
        "moduleName",
        "getModuleName",
        "setModuleName",
        "targetPackage",
        "getTargetPackage",
        "setTargetPackage",
        "build",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;",
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
.field private action:Ljava/lang/String;

.field private activityClassName:Ljava/lang/String;

.field private final activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

.field private data:Landroid/net/Uri;

.field private dataPattern:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V
    .locals 1

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
    .locals 4

    .line 65
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    .line 66
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 68
    new-instance v2, Landroid/content/ComponentName;

    .line 69
    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez v3, :cond_1

    .line 70
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    invoke-virtual {v3}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    :cond_1
    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 77
    :cond_2
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 78
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setModuleName(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 80
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 81
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0

    .line 65
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.dynamicfeatures.DynamicActivityNavigator.Destination"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivityClassName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Landroid/net/Uri;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-void
.end method

.method public final setActivityClassName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-void
.end method

.method public final setData(Landroid/net/Uri;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-void
.end method

.method public final setDataPattern(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPackage(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-void
.end method

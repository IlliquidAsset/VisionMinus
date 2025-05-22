.class public Lcom/mob/commons/utag/UserTager$CustomTag;
.super Ljava/lang/Object;
.source "UserTager.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/utag/UserTager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTag"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/utag/UserTager;

.field private b:Lcom/mob/commons/utag/UserTager;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mob/commons/utag/UserTager;Lcom/mob/commons/utag/UserTager;Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->a:Lcom/mob/commons/utag/UserTager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->b:Lcom/mob/commons/utag/UserTager;

    .line 265
    iput-object p3, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/utag/UserTager;Lcom/mob/commons/utag/UserTager;Ljava/lang/String;Lcom/mob/commons/utag/UserTager$1;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/utag/UserTager$CustomTag;-><init>(Lcom/mob/commons/utag/UserTager;Lcom/mob/commons/utag/UserTager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/mob/commons/utag/UserTager;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->b:Lcom/mob/commons/utag/UserTager;

    iget-object v1, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mob/commons/utag/UserTager;->a(Lcom/mob/commons/utag/UserTager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/mob/commons/utag/UserTager$CustomTag;->b:Lcom/mob/commons/utag/UserTager;

    return-object p1
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;)Lcom/mob/commons/utag/UserTager;
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/mob/commons/utag/UserTager$CustomTag;->a(Ljava/lang/Object;)Lcom/mob/commons/utag/UserTager;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Ljava/lang/Number;)Lcom/mob/commons/utag/UserTager;
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/mob/commons/utag/UserTager$CustomTag;->a(Ljava/lang/Object;)Lcom/mob/commons/utag/UserTager;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Ljava/lang/String;)Lcom/mob/commons/utag/UserTager;
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/mob/commons/utag/UserTager$CustomTag;->a(Ljava/lang/Object;)Lcom/mob/commons/utag/UserTager;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/mob/wrappers/AnalySDKWrapper$User;
.super Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/wrappers/AnalySDKWrapper$MapCreator<",
        "Lcom/mob/wrappers/AnalySDKWrapper$User;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/mob/tools/proguard/PublicMemberKeeper;"
    }
.end annotation


# instance fields
.field private birthday:Ljava/util/Date;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private firstAccessTime:Ljava/util/Date;

.field private gender:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

.field private name:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private registryTime:J

.field private retistryChannel:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/mob/wrappers/AnalySDKWrapper$User;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .line 189
    invoke-static {}, Lcom/mob/wrappers/AnalySDKWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    new-instance v0, Lcom/mob/analysdk/User;

    invoke-direct {v0}, Lcom/mob/analysdk/User;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/analysdk/User;->name:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->birthday:Ljava/util/Date;

    iput-object v1, v0, Lcom/mob/analysdk/User;->birthday:Ljava/util/Date;

    .line 193
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->gender:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    sget-object v2, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->Man:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    if-ne v1, v2, :cond_0

    .line 194
    sget-object v1, Lcom/mob/analysdk/User$Gender;->Man:Lcom/mob/analysdk/User$Gender;

    iput-object v1, v0, Lcom/mob/analysdk/User;->gender:Lcom/mob/analysdk/User$Gender;

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->gender:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    sget-object v2, Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;->Woman:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    if-ne v1, v2, :cond_1

    .line 196
    sget-object v1, Lcom/mob/analysdk/User$Gender;->Woman:Lcom/mob/analysdk/User$Gender;

    iput-object v1, v0, Lcom/mob/analysdk/User;->gender:Lcom/mob/analysdk/User$Gender;

    .line 198
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->firstAccessTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/mob/analysdk/User;->firstAccessTime:Ljava/util/Date;

    .line 199
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->retistryChannel:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/analysdk/User;->retistryChannel:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/analysdk/User;->country:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->province:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/analysdk/User;->province:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/analysdk/User;->city:Ljava/lang/String;

    .line 203
    iget-wide v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->registryTime:J

    iput-wide v1, v0, Lcom/mob/analysdk/User;->registryTime:J

    .line 204
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->map:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/mob/analysdk/User;->others:Ljava/util/HashMap;

    .line 205
    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mob/analysdk/AnalySDK;->identifyUser(Ljava/lang/String;Lcom/mob/analysdk/User;)V

    :cond_2
    return-void
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->birthday:Ljava/util/Date;

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->city:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstAccessTime(Ljava/util/Date;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->firstAccessTime:Ljava/util/Date;

    return-object p0
.end method

.method public setGender(Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->gender:Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setProvince(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->province:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistryTime(J)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 184
    iput-wide p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->registryTime:J

    return-object p0
.end method

.method public setRetistryChannel(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->retistryChannel:Ljava/lang/String;

    return-object p0
.end method

.method public withID(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$User;->userId:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcom/airbnb/android/enums/CompanionService;
.super Ljava/lang/Enum;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/enums/CompanionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/enums/CompanionService;

.field public static final enum SAN_FRANCISCO:Lcom/airbnb/android/enums/CompanionService;

.field public static final enum TOKYO:Lcom/airbnb/android/enums/CompanionService;


# instance fields
.field private mMarket:Ljava/lang/String;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/ServiceListSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/airbnb/android/enums/CompanionService;

    const-string/jumbo v1, "SAN_FRANCISCO"

    const-string/jumbo v2, "San Francisco"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/enums/CompanionService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CompanionService;->SAN_FRANCISCO:Lcom/airbnb/android/enums/CompanionService;

    .line 15
    new-instance v0, Lcom/airbnb/android/enums/CompanionService;

    const-string/jumbo v1, "TOKYO"

    const-string/jumbo v2, "Tokyo"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/enums/CompanionService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CompanionService;->TOKYO:Lcom/airbnb/android/enums/CompanionService;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/enums/CompanionService;

    sget-object v1, Lcom/airbnb/android/enums/CompanionService;->SAN_FRANCISCO:Lcom/airbnb/android/enums/CompanionService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/enums/CompanionService;->TOKYO:Lcom/airbnb/android/enums/CompanionService;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/enums/CompanionService;->$VALUES:[Lcom/airbnb/android/enums/CompanionService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p3, "market"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/enums/CompanionService;->mMarket:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "favorites":[Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 25
    .local v3, "rentalsAndDeliveries":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 26
    .local v1, "insiderAccess":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 27
    .local v2, "localExperiences":[Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 29
    .local v4, "services":[Ljava/lang/Integer;
    const-string/jumbo v5, "San Francisco"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 30
    new-array v0, v10, [Ljava/lang/Integer;

    .end local v0    # "favorites":[Ljava/lang/Integer;
    const v5, 0x7f0e03b2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    const v5, 0x7f0e039d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const v5, 0x7f0e03a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v8

    const v5, 0x7f0e03a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v9

    .line 35
    .restart local v0    # "favorites":[Ljava/lang/Integer;
    new-array v3, v9, [Ljava/lang/Integer;

    .end local v3    # "rentalsAndDeliveries":[Ljava/lang/Integer;
    const v5, 0x7f0e03a2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const v5, 0x7f0e03a3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f0e03b6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    .line 39
    .restart local v3    # "rentalsAndDeliveries":[Ljava/lang/Integer;
    new-array v1, v10, [Ljava/lang/Integer;

    .end local v1    # "insiderAccess":[Ljava/lang/Integer;
    const v5, 0x7f0e039e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    const v5, 0x7f0e03af

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    const v5, 0x7f0e03aa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    const v5, 0x7f0e03b0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    .line 44
    .restart local v1    # "insiderAccess":[Ljava/lang/Integer;
    new-array v2, v9, [Ljava/lang/Integer;

    .end local v2    # "localExperiences":[Ljava/lang/Integer;
    const v5, 0x7f0e03a4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const v5, 0x7f0e03ad

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    const v5, 0x7f0e03ac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    .line 48
    .restart local v2    # "localExperiences":[Ljava/lang/Integer;
    new-array v4, v9, [Ljava/lang/Integer;

    .end local v4    # "services":[Ljava/lang/Integer;
    const v5, 0x7f0e03ab

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0e03ae

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0e039f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 76
    .restart local v4    # "services":[Ljava/lang/Integer;
    :goto_c2
    iget-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    new-instance v6, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    const v7, 0x7f0e03a5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    new-instance v6, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    const v7, 0x7f0e03a6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    new-instance v6, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    const v7, 0x7f0e03a7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    new-instance v6, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    const v7, 0x7f0e03a8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    new-instance v6, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    const v7, 0x7f0e03a9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void

    .line 51
    :cond_118
    const-string/jumbo v5, "Tokyo"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bd

    .line 52
    new-array v0, v10, [Ljava/lang/Integer;

    .end local v0    # "favorites":[Ljava/lang/Integer;
    const v5, 0x7f0e03b1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    const v5, 0x7f0e03a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const v5, 0x7f0e03b5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v8

    const v5, 0x7f0e03b2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v9

    .line 57
    .restart local v0    # "favorites":[Ljava/lang/Integer;
    new-array v3, v9, [Ljava/lang/Integer;

    .end local v3    # "rentalsAndDeliveries":[Ljava/lang/Integer;
    const v5, 0x7f0e039d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const v5, 0x7f0e03a2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f0e03b6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    .line 61
    .restart local v3    # "rentalsAndDeliveries":[Ljava/lang/Integer;
    new-array v1, v9, [Ljava/lang/Integer;

    .end local v1    # "insiderAccess":[Ljava/lang/Integer;
    const v5, 0x7f0e03af

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    const v5, 0x7f0e03b7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    const v5, 0x7f0e03aa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    .line 65
    .restart local v1    # "insiderAccess":[Ljava/lang/Integer;
    new-array v2, v10, [Ljava/lang/Integer;

    .end local v2    # "localExperiences":[Ljava/lang/Integer;
    const v5, 0x7f0e03a4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const v5, 0x7f0e03ad

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    const v5, 0x7f0e03ac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    const v5, 0x7f0e03a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v9

    .line 70
    .restart local v2    # "localExperiences":[Ljava/lang/Integer;
    new-array v4, v8, [Ljava/lang/Integer;

    .end local v4    # "services":[Ljava/lang/Integer;
    const v5, 0x7f0e03ab

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0e03ae

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .restart local v4    # "services":[Ljava/lang/Integer;
    goto/16 :goto_c2

    .line 73
    :cond_1bd
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid market for Companion Services"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/enums/CompanionService;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/airbnb/android/enums/CompanionService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/enums/CompanionService;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/enums/CompanionService;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/airbnb/android/enums/CompanionService;->$VALUES:[Lcom/airbnb/android/enums/CompanionService;

    invoke-virtual {v0}, [Lcom/airbnb/android/enums/CompanionService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/enums/CompanionService;

    return-object v0
.end method


# virtual methods
.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/ServiceListSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/enums/CompanionService;->mServices:Ljava/util/List;

    return-object v0
.end method

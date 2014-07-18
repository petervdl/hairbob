.class public final enum Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
.super Ljava/lang/Enum;
.source "SlidingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlidingMenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Account:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Calendar:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Help:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum HowItWorks:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum HowToHost:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Inbox:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum ListYourSpace:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum Settings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum SignIn:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum WishLists:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field public static final enum YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;


# instance fields
.field private final mFlags:I

.field private final mNameId:I

.field private final mRequiredOpt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/16 v12, 0xb

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v1, "Search"

    const v3, 0x7f0e0571

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 36
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Discover"

    const/4 v8, 0x1

    const v9, 0x7f0e0569

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 37
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "YourTrips"

    const v9, 0x7f0e0575

    move v8, v13

    move v10, v13

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 38
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "WishLists"

    const/4 v8, 0x3

    const v9, 0x7f0e0574

    move v10, v13

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->WishLists:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 39
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Inbox"

    const v9, 0x7f0e056e

    move v8, v14

    move v10, v13

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Inbox:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 40
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "HowItWorks"

    const/4 v8, 0x5

    const v9, 0x7f0e02ce

    const/16 v10, 0x24

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowItWorks:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 41
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Help"

    const/4 v8, 0x6

    const v9, 0x7f0e056b

    move v10, v14

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Help:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 42
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Settings"

    const/4 v8, 0x7

    const v9, 0x7f0e0032

    move v10, v14

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Settings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 43
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "HostHome"

    const/16 v8, 0x8

    const v9, 0x7f0e056c

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 44
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Calendar"

    const/16 v8, 0x9

    const v9, 0x7f0e0568

    const-string/jumbo v11, "airnav_calendar"

    move v10, v12

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Calendar:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 45
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "ListYourSpace"

    const/16 v8, 0xa

    const v9, 0x7f0e056f

    const/16 v10, 0x31

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ListYourSpace:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 46
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Listings"

    const v9, 0x7f0e0570

    move v8, v12

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 47
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "HowToHost"

    const/16 v8, 0xc

    const v9, 0x7f0e056d

    const/16 v10, 0x31

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowToHost:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 48
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Hospitality"

    const/16 v8, 0xd

    const v9, 0x7f0e02c0

    const/16 v10, 0x9

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 49
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Groups"

    const/16 v8, 0xe

    const v9, 0x7f0e056a

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 50
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "SignIn"

    const/16 v8, 0xf

    const/16 v10, 0x40

    move v9, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->SignIn:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 51
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    const-string/jumbo v7, "Account"

    const/16 v8, 0x10

    const/16 v10, 0x40

    move v9, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Account:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v1, v0, v13

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->WishLists:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Inbox:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowItWorks:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Help:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Settings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Calendar:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ListYourSpace:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v1, v0, v12

    const/16 v1, 0xc

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowToHost:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->SignIn:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Account:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->$VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "nameId"    # I
    .param p4, "flags"    # I
    .param p5, "requiredOpt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mNameId:I

    .line 60
    iput p4, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    .line 61
    iput-object p5, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mRequiredOpt:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .prologue
    .line 34
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mNameId:I

    return v0
.end method

.method public static getMenuItem(J)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 5
    .param p0, "id"    # J

    .prologue
    .line 115
    long-to-int v0, p0

    .line 117
    .local v0, "i":I
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v1

    .line 118
    .local v1, "values":[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    if-ltz v0, :cond_d

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 119
    aget-object v2, v1, v0

    .line 121
    :goto_c
    return-object v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private requiresHost()Z
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private requiresNotAHost()Z
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private requiresNotSignedIn()Z
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private requiresSignIn()Z
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->$VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    return-object v0
.end method


# virtual methods
.method public hasRequiredOpt()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mRequiredOpt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 93
    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mRequiredOpt:Ljava/lang/String;

    invoke-static {v2}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mRequiredOpt:Ljava/lang/String;

    const-string/jumbo v3, "enabled"

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    move v1, v0

    goto :goto_a
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHostItem()Z
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public shouldForceNewScreen()Z
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public shouldIncludeItem(ZZ)Z
    .registers 4
    .param p1, "isSignedIn"    # Z
    .param p2, "isHost"    # Z

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->hasRequiredOpt()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez p1, :cond_14

    invoke-direct {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->requiresSignIn()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_14
    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->requiresNotSignedIn()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_1c
    if-nez p2, :cond_24

    invoke-direct {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->requiresHost()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    if-eqz p2, :cond_2e

    invoke-direct {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->requiresNotAHost()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 108
    :cond_2c
    const/4 v0, 0x0

    .line 111
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x1

    goto :goto_2d
.end method

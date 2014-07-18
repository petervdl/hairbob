.class final enum Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;
.super Ljava/lang/Enum;
.source "OfficialIdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/OfficialIdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OfficialIdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum BACK_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum BACK_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum ERROR:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum FRONT_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum FRONT_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum ID_TYPE:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field public static final enum UPLOAD:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "COUNTRY"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 118
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "ID_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ID_TYPE:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 119
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "FRONT_PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 120
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "FRONT_CONFIRM"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 121
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "BACK_PHOTO"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 122
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "BACK_CONFIRM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 123
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "UPLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->UPLOAD:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 124
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ERROR:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ID_TYPE:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->UPLOAD:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ERROR:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->$VALUES:[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->$VALUES:[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    return-object v0
.end method


# virtual methods
.method public getPrevious()Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;
    .registers 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ordinal()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->values()[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_8
.end method

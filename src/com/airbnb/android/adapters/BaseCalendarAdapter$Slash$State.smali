.class public final enum Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
.super Ljava/lang/Enum;
.source "BaseCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

.field public static final enum BEGIN:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

.field public static final enum END:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

.field public static final enum MIDDLE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

.field public static final enum NONE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    new-instance v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    const-string/jumbo v1, "BEGIN"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->BEGIN:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 305
    new-instance v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    const-string/jumbo v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->MIDDLE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 306
    new-instance v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->END:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 307
    new-instance v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->NONE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 303
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    sget-object v1, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->BEGIN:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->MIDDLE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->END:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->NONE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->$VALUES:[Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

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
    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    .registers 7
    .param p0, "yesterday"    # Z
    .param p1, "today"    # Z
    .param p2, "color"    # I
    .param p3, "compositor"    # Lcom/airbnb/android/utils/DrawableCompositor;

    .prologue
    .line 322
    invoke-static {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->getApplies(ZZ)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    move-result-object v1

    .line 323
    .local v1, "state":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    const/4 v0, 0x0

    .line 324
    .local v0, "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    sget-object v2, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->NONE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    if-eq v1, v2, :cond_e

    .line 325
    new-instance v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    .end local v0    # "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;-><init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;I)V

    .line 327
    .restart local v0    # "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    :cond_e
    if-eqz v0, :cond_15

    if-eqz p3, :cond_15

    .line 328
    invoke-virtual {p3, v0}, Lcom/airbnb/android/utils/DrawableCompositor;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_15
    return-object v0
.end method

.method public static getApplies(ZZ)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    .registers 3
    .param p0, "yesterday"    # Z
    .param p1, "today"    # Z

    .prologue
    .line 310
    if-nez p1, :cond_7

    if-eqz p0, :cond_7

    .line 311
    sget-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->END:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 317
    :goto_6
    return-object v0

    .line 312
    :cond_7
    if-eqz p1, :cond_e

    if-nez p0, :cond_e

    .line 313
    sget-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->BEGIN:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    goto :goto_6

    .line 314
    :cond_e
    if-eqz p1, :cond_15

    if-eqz p0, :cond_15

    .line 315
    sget-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->MIDDLE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    goto :goto_6

    .line 317
    :cond_15
    sget-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->NONE:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const-class v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    .registers 1

    .prologue
    .line 303
    sget-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->$VALUES:[Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    return-object v0
.end method

.class final enum Lcom/airbnb/android/views/RangeSeekBar$Thumb;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Thumb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/views/RangeSeekBar$Thumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/views/RangeSeekBar$Thumb;

.field public static final enum MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

.field public static final enum MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    const-string/jumbo v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 571
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    const-string/jumbo v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 569
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->$VALUES:[Lcom/airbnb/android/views/RangeSeekBar$Thumb;

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
    .line 569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/views/RangeSeekBar$Thumb;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 569
    const-class v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/views/RangeSeekBar$Thumb;
    .registers 1

    .prologue
    .line 569
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->$VALUES:[Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-virtual {v0}, [Lcom/airbnb/android/views/RangeSeekBar$Thumb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    return-object v0
.end method

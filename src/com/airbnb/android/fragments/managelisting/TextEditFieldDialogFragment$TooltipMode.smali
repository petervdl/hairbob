.class final enum Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
.super Ljava/lang/Enum;
.source "TextEditFieldDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TooltipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

.field public static final enum CharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

.field public static final enum None:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

.field public static final enum WordMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    const-string/jumbo v1, "CharacterMode"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->CharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    .line 110
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    const-string/jumbo v1, "WordMode"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->WordMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    .line 111
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->None:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->CharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->WordMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->None:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->$VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->$VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    return-object v0
.end method

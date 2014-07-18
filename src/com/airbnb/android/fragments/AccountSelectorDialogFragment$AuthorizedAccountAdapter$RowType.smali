.class final enum Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;
.super Ljava/lang/Enum;
.source "AccountSelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

.field public static final enum Account:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

.field public static final enum BecomeUser:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

.field public static final enum NewAccount:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    const-string/jumbo v1, "Account"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->Account:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    .line 88
    new-instance v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    const-string/jumbo v1, "NewAccount"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->NewAccount:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    .line 89
    new-instance v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    const-string/jumbo v1, "BecomeUser"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->BecomeUser:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->Account:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->NewAccount:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->BecomeUser:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->$VALUES:[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->$VALUES:[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    return-object v0
.end method

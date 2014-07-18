.class final enum Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;
.super Ljava/lang/Enum;
.source "EmailSignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/EmailSignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TOS_SECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

.field public static final enum GUEST_REFUND_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

.field public static final enum HOST_GAURANTEE:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

.field public static final enum PRIVACY_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

.field public static final enum TERMS:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    const-string/jumbo v1, "TERMS"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->TERMS:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    .line 65
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    const-string/jumbo v1, "PRIVACY_POLICY"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->PRIVACY_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    .line 66
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    const-string/jumbo v1, "GUEST_REFUND_POLICY"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->GUEST_REFUND_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    .line 67
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    const-string/jumbo v1, "HOST_GAURANTEE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->HOST_GAURANTEE:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->TERMS:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->PRIVACY_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->GUEST_REFUND_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->HOST_GAURANTEE:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->$VALUES:[Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->$VALUES:[Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    return-object v0
.end method

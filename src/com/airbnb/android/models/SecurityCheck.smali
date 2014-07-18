.class public Lcom/airbnb/android/models/SecurityCheck;
.super Lcom/airbnb/android/models/_SecurityCheck;
.source "SecurityCheck.java"


# static fields
.field private static final CONTACT_DIALOG_TAG:Ljava/lang/String; = "contact_dialog"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SecurityCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_SECURITY_CHECK_REQUIRED:Ljava/lang/String; = "security_check_required"

.field public static final REQUEST_CODE_CONTACT:I = 0x3e9

.field public static final STRATEGY_CONTACT:Ljava/lang/String; = "contact"

.field public static final STRATEGY_PHONE_VERIFICATION:Ljava/lang/String; = "phone_verification"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/models/SecurityCheck$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SecurityCheck$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SecurityCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheck;-><init>()V

    return-void
.end method

.method public static showContactDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;I)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "requestCode"    # I
    .param p3, "f"    # Landroid/support/v4/app/Fragment;
    .param p4, "bodyText"    # I

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string/jumbo v1, "contact_dialog"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_49

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackContactImpression(Lcom/airbnb/android/utils/Strap;)V

    .line 41
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e06cf

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0e0036

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e06cc

    invoke-virtual {v1, v2, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    .line 42
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 43
    const-string/jumbo v1, "contact_dialog"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :cond_49
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheck;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getData()Lcom/airbnb/android/models/SecurityCheckData;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheck;->getData()Lcom/airbnb/android/models/SecurityCheckData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheck;->getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStrategy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheck;->getStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSatisfied()Z
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheck;->isSatisfied()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheck;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setData(Lcom/airbnb/android/models/SecurityCheckData;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/SecurityCheckData;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheck;->setData(Lcom/airbnb/android/models/SecurityCheckData;)V

    return-void
.end method

.method public bridge synthetic setRequirements(Lcom/airbnb/android/models/SecurityCheckRequirements;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/SecurityCheckRequirements;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheck;->setRequirements(Lcom/airbnb/android/models/SecurityCheckRequirements;)V

    return-void
.end method

.method public bridge synthetic setSatisfied(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheck;->setSatisfied(Z)V

    return-void
.end method

.method public bridge synthetic setStrategy(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheck;->setStrategy(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SecurityCheck;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

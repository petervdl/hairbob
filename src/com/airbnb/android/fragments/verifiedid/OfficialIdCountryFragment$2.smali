.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;
.super Ljava/lang/Object;
.source "OfficialIdCountryFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/NameCodePickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->selectCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

.field final synthetic val$f:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V
    .registers 3

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;->val$f:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;->val$f:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/activities/OfficialIdActivity;->setOfficialIdCountryCode(Ljava/lang/String;)V

    .line 81
    return-void
.end method

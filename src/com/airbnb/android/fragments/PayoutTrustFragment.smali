.class public Lcom/airbnb/android/fragments/PayoutTrustFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutTrustFragment.java"


# static fields
.field public static final DOB_KEY:Ljava/lang/String; = "dob_key"


# instance fields
.field private mBirthday:Ljava/util/Calendar;

.field mBirthdayLabel:Landroid/view/View;

.field mBirthdaySelector:Landroid/view/View;

.field mBirthdaySelectorText:Landroid/widget/TextView;

.field private mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

.field mNextButton:Landroid/widget/Button;

.field mPayoutApt:Landroid/widget/TextView;

.field mPayoutCity:Landroid/widget/TextView;

.field private mPayoutCountryCode:Ljava/lang/String;

.field mPayoutCountrySelector:Landroid/widget/TextView;

.field mPayoutState:Landroid/widget/TextView;

.field mPayoutStreet:Landroid/widget/TextView;

.field mPayoutZip:Landroid/widget/TextView;

.field private mSupportedCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedCountriesNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->selectBirthday()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->selectCountry()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountriesNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->showSelectCountryDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method private loadSupportedCountriesForDialog()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Lcom/airbnb/android/requests/PayoutCountriesRequest;

    new-instance v1, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/PayoutCountriesRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/PayoutCountriesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 211
    return-void
.end method

.method private prefetchSupportedCountries()V
    .registers 3

    .prologue
    .line 177
    new-instance v0, Lcom/airbnb/android/requests/PayoutCountriesRequest;

    new-instance v1, Lcom/airbnb/android/fragments/PayoutTrustFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$5;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/PayoutCountriesRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/PayoutCountriesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 190
    return-void
.end method

.method private resetBirthdayText()V
    .registers 4

    .prologue
    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e0495

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelectorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method private selectBirthday()V
    .registers 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    invoke-static {v1, p0}, Lcom/airbnb/android/fragments/DatePickerDialog;->newInstance(Ljava/util/Calendar;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DatePickerDialog;

    move-result-object v0

    .line 143
    .local v0, "dialog":Lcom/airbnb/android/fragments/DatePickerDialog;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/DatePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private selectCountry()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->showSelectCountryDialog(Ljava/util/ArrayList;)V

    .line 139
    :goto_9
    return-void

    .line 137
    :cond_a
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->loadSupportedCountriesForDialog()V

    goto :goto_9
.end method

.method private showSelectCountryDialog(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "countryCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "currentCountry":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    :goto_14
    return-void

    .line 161
    :cond_15
    const v1, 0x7f0e0591

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountriesNames:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2, v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    .line 163
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    new-instance v2, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->setListener(Lcom/airbnb/android/interfaces/NameCodePickerListener;)V

    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_19

    .line 123
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->resetBirthdayText()V

    .line 126
    :cond_19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    .line 59
    const v2, 0x7f0300d1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 62
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v0

    .line 63
    .local v0, "birth":Ljava/util/Date;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6c

    .line 64
    :cond_25
    if-eqz p3, :cond_4a

    const-string/jumbo v2, "dob_key"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    .line 66
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    const-string/jumbo v4, "dob_key"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->resetBirthdayText()V

    .line 69
    :cond_4a
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutTrustFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :goto_54
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountrySelector:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutTrustFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mNextButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;-><init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->prefetchSupportedCountries()V

    .line 108
    return-object v1

    .line 77
    :cond_6c
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdayLabel:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    if-eqz v0, :cond_13

    .line 115
    const-string/jumbo v0, "dob_key"

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    :cond_13
    return-void
.end method

.method public validateFields()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 215
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0138

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->selectCountry()V

    .line 250
    :goto_1b
    return v0

    .line 218
    :cond_1c
    const-string/jumbo v2, "US"

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v2, "CA"

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutState:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_53

    .line 220
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e071f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1b

    .line 225
    :cond_53
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutStreet:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 226
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0056

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutStreet:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1b

    .line 231
    :cond_77
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCity:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e00d0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1b

    .line 238
    :cond_9b
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutZip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "IE"

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 239
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0865

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 240
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutZip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_1b

    .line 244
    :cond_cb
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;

    if-nez v2, :cond_ec

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ec

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e013f

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 246
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1b

    :cond_ec
    move v0, v1

    .line 250
    goto/16 :goto_1b
.end method

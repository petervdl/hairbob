.class public Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "EditAddressFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final COUNTRY_CODE_US:Ljava/lang/String; = "US"

.field private static final DIALOG_FRAGMENT:Ljava/lang/String; = "dialog_fragment"

.field private static final REQUEST_CODE_COUNTRY:I = 0x2

.field private static final REQUEST_CODE_STATE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAptEditText:Landroid/widget/EditText;

.field private mCityEditText:Landroid/widget/EditText;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryEditText:Landroid/widget/EditText;

.field private mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mStateCode:Ljava/lang/String;

.field private mStateEditText:Landroid/widget/EditText;

.field private mStreetEditText:Landroid/widget/EditText;

.field private mZipEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectState()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectCountry()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->submitAddressForGeocode(Z)V

    return-void
.end method

.method private findStateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "states":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_29

    aget-object v3, v0, v1

    .line 288
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "stateItem":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 290
    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 293
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "stateItem":[Ljava/lang/String;
    :goto_25
    return-object v6

    .line 287
    .restart local v3    # "state":Ljava/lang/String;
    .restart local v4    # "stateItem":[Ljava/lang/String;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 293
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "stateItem":[Ljava/lang/String;
    :cond_29
    const-string/jumbo v6, ""

    goto :goto_25
.end method

.method private geoCodeAddress(Z)V
    .registers 5
    .param p1, "newLocation"    # Z

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 205
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;Z)V

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocationName(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 237
    return-void
.end method

.method private getState()Ljava/lang/String;
    .registers 10

    .prologue
    .line 265
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 266
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    .line 282
    :cond_a
    :goto_a
    return-object v5

    .line 269
    :cond_b
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "stateName":Ljava/lang/String;
    const-string/jumbo v7, "US"

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 273
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "states":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2e
    if-ge v1, v2, :cond_49

    aget-object v3, v0, v1

    .line 275
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "stateItem":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 277
    const/4 v7, 0x1

    aget-object v5, v4, v7

    goto :goto_a

    .line 274
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 282
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "stateItem":[Ljava/lang/String;
    :cond_49
    const/4 v5, 0x0

    goto :goto_a
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 60
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;-><init>()V

    .line 61
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private promptForStateEntry()V
    .registers 5

    .prologue
    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e01a9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 198
    const v2, 0x7f0e0563

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 200
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method

.method private selectCountry()V
    .registers 4

    .prologue
    .line 121
    const v1, 0x7f0e050e

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v0

    .line 122
    .local v0, "f":Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private selectState()V
    .registers 4

    .prologue
    .line 115
    const v1, 0x7f0e050f

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    move-result-object v0

    .line 116
    .local v0, "f":Lcom/airbnb/android/fragments/StatePickerDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private submitAddressForGeocode(Z)V
    .registers 5
    .param p1, "newLocation"    # Z

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectCountry()V

    .line 193
    :goto_11
    return-void

    .line 172
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 173
    const-string/jumbo v0, "US"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 174
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectState()V

    goto :goto_11

    .line 176
    :cond_29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->promptForStateEntry()V

    goto :goto_11

    .line 179
    :cond_2d
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStreetEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setStreetAddress(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mAptEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setApartment(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCityEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setCity(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setState(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mZipEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setZipCode(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setCountry(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setCountryCode(Ljava/lang/String;)V

    .line 187
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_e5

    const-string/jumbo v0, "ml_post_list"

    :goto_9d
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "location"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "address_form_done_click"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getZipCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->geoCodeAddress(Z)V

    goto/16 :goto_11

    .line 187
    :cond_e5
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_9d
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 309
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 310
    packed-switch p1, :pswitch_data_5c

    .line 333
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    :goto_a
    return-void

    .line 312
    :pswitch_b
    const-string/jumbo v1, "country"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/NameCodeItem;

    .line 313
    .local v0, "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    .line 316
    const-string/jumbo v1, "US"

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 317
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_a

    .line 319
    :cond_35
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 320
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    goto :goto_a

    .line 326
    .end local v0    # "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    :pswitch_43
    const-string/jumbo v1, "state"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/NameCodeItem;

    .line 327
    .restart local v0    # "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateCode:Ljava/lang/String;

    goto :goto_a

    .line 310
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 130
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->setHasOptionsMenu(Z)V

    .line 133
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v0

    if-nez v0, :cond_e

    .line 152
    const v0, 0x7f100016

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 69
    const v2, 0x7f0300bc

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f08020b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStreetEditText:Landroid/widget/EditText;

    .line 72
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStreetEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v2, 0x7f08020c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mAptEditText:Landroid/widget/EditText;

    .line 75
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mAptEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getApartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v2, 0x7f08020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCityEditText:Landroid/widget/EditText;

    .line 78
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCityEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v2, 0x7f08020e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->findStateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "stateName":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "stateName":Ljava/lang/String;
    :cond_6d
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v2, 0x7f08020f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mZipEditText:Landroid/widget/EditText;

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mZipEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryEditText:Landroid/widget/EditText;

    .line 97
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const-string/jumbo v2, "US"

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 108
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mStateEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 111
    :cond_c8
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08054e

    if-ne v1, v2, :cond_e

    .line 161
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->submitAddressForGeocode(Z)V

    .line 164
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 146
    :cond_17
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 245
    .local v0, "actionbar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 248
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 249
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 250
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 251
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :goto_33
    return-void

    .line 259
    :cond_34
    const v1, 0x7f0e0051

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_33
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 298
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 300
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 301
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 304
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 305
    return-void
.end method

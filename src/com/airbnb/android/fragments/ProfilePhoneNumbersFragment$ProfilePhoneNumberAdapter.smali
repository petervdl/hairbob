.class Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProfilePhoneNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePhoneNumberAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/ProfilePhoneNumber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ProfilePhoneNumber;>;"
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .line 201
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 206
    if-nez p2, :cond_12

    .line 207
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03015a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    :cond_12
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/ProfilePhoneNumber;

    .line 210
    .local v0, "phoneNumber":Lcom/airbnb/android/models/ProfilePhoneNumber;
    const v2, 0x7f080398

    invoke-static {p2, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/ProfilePhoneNumber;->getNumberFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v2, 0x7f080399

    invoke-static {p2, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "verifyButton":Landroid/view/View;
    invoke-virtual {v0}, Lcom/airbnb/android/models/ProfilePhoneNumber;->isVerified()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 216
    invoke-virtual {v0}, Lcom/airbnb/android/models/ProfilePhoneNumber;->isVerified()Z

    move-result v2

    if-nez v2, :cond_42

    .line 218
    const v2, 0x7f020034

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    :cond_42
    const v2, 0x7f08039a

    invoke-static {p2, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;Lcom/airbnb/android/models/ProfilePhoneNumber;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-object p2
.end method

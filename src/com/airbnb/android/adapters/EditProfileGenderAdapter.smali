.class public Lcom/airbnb/android/adapters/EditProfileGenderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditProfileGenderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/airbnb/android/interfaces/EditProfileInterface$Gender;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "gender"    # Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .prologue
    .line 22
    invoke-static {}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->values()[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 23
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->ordinal()I

    move-result v0

    :goto_d
    iput v0, p0, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;->mSelected:I

    .line 24
    return-void

    .line 23
    :cond_10
    const/4 v0, -0x1

    goto :goto_d
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 28
    if-nez p2, :cond_1f

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 30
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030138

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v1, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/EditProfileGenderAdapter;Landroid/view/View;)V

    .line 32
    .local v1, "holder":Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .end local v1    # "holder":Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;

    .line 36
    .restart local v1    # "holder":Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 38
    .local v0, "gender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    iget-object v4, v1, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 39
    iget-object v4, v1, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v5, p0, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;->mSelected:I

    if-ne p1, v5, :cond_3b

    const/4 v3, 0x1

    :cond_3b
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 41
    return-object p2
.end method

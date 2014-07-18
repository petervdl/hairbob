.class public Lcom/airbnb/android/adapters/ReferreeArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReferreeArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Object:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TObject;>;"
    }
.end annotation


# instance fields
.field private mPending:Z

.field private mReferrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p5, "pending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TObject;>;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/airbnb/android/adapters/ReferreeArrayAdapter;, "Lcom/airbnb/android/adapters/ReferreeArrayAdapter<TObject;>;"
    .local p4, "referrees":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 24
    iput-object p4, p0, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->mReferrees:Ljava/util/List;

    .line 25
    iput-boolean p5, p0, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->mPending:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    .local p0, "this":Lcom/airbnb/android/adapters/ReferreeArrayAdapter;, "Lcom/airbnb/android/adapters/ReferreeArrayAdapter<TObject;>;"
    move-object v3, p2

    .line 38
    .local v3, "v":Landroid/view/View;
    if-nez p2, :cond_8d

    .line 39
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 41
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v6, 0x7f0301ab

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 43
    new-instance v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;

    invoke-direct {v5}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;-><init>()V

    .line 44
    .local v5, "viewHolder":Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;
    const v6, 0x7f080452

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeNameView:Landroid/widget/TextView;

    .line 45
    const v6, 0x7f080453

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->couponValueView:Landroid/widget/TextView;

    .line 46
    const v6, 0x7f080454

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeStatusView:Landroid/widget/TextView;

    .line 47
    const v6, 0x7f08009e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/HaloImageView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->framedImage:Lcom/airbnb/android/views/HaloImageView;

    .line 48
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :goto_4c
    iget-object v6, p0, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->mReferrees:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Referree;

    .line 55
    .local v0, "currentReferree":Lcom/airbnb/android/models/Referree;
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->framedImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForReferree(Lcom/airbnb/android/models/Referree;)V

    .line 57
    const-string/jumbo v1, ""

    .line 58
    .local v1, "status":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "statusCode":I
    packed-switch v2, :pswitch_data_f8

    .line 78
    :goto_67
    :pswitch_67
    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d0

    .line 79
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_7a
    iget-boolean v6, p0, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->mPending:Z

    if-eqz v6, :cond_ee

    .line 87
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->couponValueView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getReferrerCreditPendingDisplayAmount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_87
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeStatusView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object v3

    .line 50
    .end local v0    # "currentReferree":Lcom/airbnb/android/models/Referree;
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "statusCode":I
    .end local v5    # "viewHolder":Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;
    :cond_8d
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;

    .restart local v5    # "viewHolder":Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;
    goto :goto_4c

    .line 62
    .restart local v0    # "currentReferree":Lcom/airbnb/android/models/Referree;
    .restart local v1    # "status":Ljava/lang/String;
    .restart local v2    # "statusCode":I
    :pswitch_94
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0610

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    goto :goto_67

    .line 65
    :pswitch_a0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0611

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    goto :goto_67

    .line 68
    :pswitch_ac
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0624

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    goto :goto_67

    .line 71
    :pswitch_b8
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e060d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    goto :goto_67

    .line 74
    :pswitch_c4
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e060e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    .line 80
    :cond_d0
    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e4

    .line 81
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 83
    :cond_e4
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->referreeNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 89
    :cond_ee
    iget-object v6, v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;->couponValueView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Referree;->getReferrerCreditEarnedDisplayAmount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87

    .line 60
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_94
        :pswitch_a0
        :pswitch_67
        :pswitch_ac
        :pswitch_67
        :pswitch_b8
        :pswitch_67
        :pswitch_c4
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/airbnb/android/adapters/ReferreeArrayAdapter;, "Lcom/airbnb/android/adapters/ReferreeArrayAdapter<TObject;>;"
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PayoutSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/PayoutSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PayoutMethodAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/PaymentMethodInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/PaymentMethodInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 144
    iput p2, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;->mResource:I

    .line 145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    if-nez p2, :cond_11

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 153
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/PaymentMethodInfo;

    .line 154
    .local v1, "payoutMethod":Lcom/airbnb/android/models/PaymentMethodInfo;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    const v3, 0x7f080382

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentMethodInfo;->getNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v3, 0x7f080384

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentMethodInfo;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-object p2
.end method

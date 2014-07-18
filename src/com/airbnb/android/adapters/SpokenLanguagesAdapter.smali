.class public Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpokenLanguagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/SpokenLanguage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SpokenLanguage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/SpokenLanguage;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/SpokenLanguage;

    .line 29
    .local v2, "item":Lcom/airbnb/android/models/SpokenLanguage;
    if-nez p2, :cond_25

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 31
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030167

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;Landroid/view/View;)V

    .line 34
    .local v0, "holder":Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    .end local v0    # "holder":Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;

    .line 38
    .restart local v0    # "holder":Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;
    new-instance v3, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;-><init>(Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;Lcom/airbnb/android/models/SpokenLanguage;Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v3, v0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SpokenLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, v0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SpokenLanguage;->isSpoken()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    return-object p2
.end method

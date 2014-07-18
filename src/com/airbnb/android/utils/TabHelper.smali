.class public Lcom/airbnb/android/utils/TabHelper;
.super Ljava/lang/Object;
.source "TabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/TabHelper$TabStyle;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static createTabView(Landroid/content/Context;IILcom/airbnb/android/utils/TabHelper$TabStyle;)Landroid/view/View;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "titleId"    # I
    .param p3, "style"    # Lcom/airbnb/android/utils/TabHelper$TabStyle;

    .prologue
    const v8, 0x7f0a001b

    const v7, 0x7f0a001a

    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "layoutResId":I
    sget-object v5, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    if-ne p3, v5, :cond_42

    .line 24
    const v1, 0x7f030023

    .line 29
    :cond_e
    :goto_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 30
    .local v2, "tabView":Landroid/view/View;
    const v5, 0x7f080072

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 31
    .local v4, "v":Landroid/widget/ImageView;
    if-eqz p1, :cond_4a

    .line 32
    invoke-static {p1, v8, v8, v7, v7}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v0

    .line 34
    .local v0, "colorizedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .end local v0    # "colorizedDrawable":Landroid/graphics/drawable/Drawable;
    :goto_29
    const v5, 0x7f080073

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-object v2

    .line 25
    .end local v2    # "tabView":Landroid/view/View;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/widget/ImageView;
    :cond_42
    sget-object v5, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Light:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    if-ne p3, v5, :cond_e

    .line 26
    const v1, 0x7f030024

    goto :goto_e

    .line 37
    .restart local v2    # "tabView":Landroid/view/View;
    .restart local v4    # "v":Landroid/widget/ImageView;
    :cond_4a
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29
.end method

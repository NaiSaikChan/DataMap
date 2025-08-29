DROP TABLE IF EXISTS Category;

CREATE TABLE IF NOT EXISTS Category (
    category_id INTEGER PRIMARY KEY,
    parent_category_id INTEGER, -- For hierarchical categories (e.g., Animals -> Land Animals)
    en_category_name TEXT NOT NULL, -- English category name
    mm_category_name TEXT NOT NULL, -- Myanmar category name
    mon_category_name TEXT, -- Mon category name (Optional, can be NULL)
    description TEXT, -- Optional description for the category
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (parent_category_id) REFERENCES Category(category_id) ON DELETE SET NULL
);
-- Insert initial categories based on the previous list
-- Main Categories (Level 1)
INSERT INTO Category (en_category_name, mm_category_name, mon_category_name) VALUES
('Living Beings', 'သက်ရှိများ', NULL),
('Inanimate Objects/Things', 'သက်မဲ့များ/အရာဝတ္ထုများ', NULL),
('Nature & Phenomena', 'သဘာဝပတ်ဝန်းကျင်နှင့် ဖြစ်ရပ်များ', NULL),
('Knowledge & Concepts', 'ပညာရပ်နှင့် သဘောတရားများ', NULL),
('Miscellaneous', 'အခြား', NULL);

-- Sub-categories for 'Living Beings' (Level 2) - Assuming category_id for 'Living Beings' is 1
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Living Beings'), 'Human Beings', 'လူသား', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Living Beings'), 'Animals', 'တိရစ္ဆာန်များ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Living Beings'), 'Plants', 'အပင်များ', NULL);

-- Sub-categories for 'Human Beings' (Level 3) - Assuming category_id for 'Human Beings' is 6
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Body Parts', 'လူ့ခန္ဓာကိုယ် အစိတ်အပိုင်းများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Diseases & Health', 'ရောဂါနှင့် ကျန်းမာရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Emotions', 'စိတ်ခံစားမှု', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Relationships', 'ဆက်ဆံရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Professions/Occupations', 'အသက်မွေးဝမ်းကျောင်း/အလုပ်အကိုင်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Human Qualities/Characteristics', 'လူ့အရည်အချင်း/စရိုက်လက္ခဏာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Human Beings'), 'Behaviors/Actions', 'အပြုအမူ/လှုပ်ရှားမှု', NULL);

-- Sub-categories for 'Animals' (Level 3) - Assuming category_id for 'Animals' is 7
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Animals'), 'Land Animals', 'ကုန်းနေသတ္တဝါ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Animals'), 'Aquatic Animals', 'ရေနေသတ္တဝါ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Animals'), 'Air Animals/Birds', 'လေနေသတ္တဝါ/ငှက်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Animals'), 'Insects', 'အင်းဆက်ပိုးမွှား', NULL);

-- Sub-categories for 'Plants' (Level 3) - Assuming category_id for 'Plants' is 8
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Plants'), 'Trees', 'သစ်ပင်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Plants'), 'Flowers', 'ပန်း', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Plants'), 'Fruits', 'အသီး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Plants'), 'Vegetables', 'ဟင်းသီးဟင်းရွက်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Plants'), 'Crops', 'သီးနှံပင်', NULL);

-- Sub-categories for 'Inanimate Objects/Things' (Level 2) - Assuming category_id for 'Inanimate Objects/Things' is 2
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Tools/Appliances', 'အသုံးအဆောင်ပစ္စည်းများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Vehicles/Transportation', 'ယာဉ်/သယ်ယူပို့ဆောင်ရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Clothing', 'အဝတ်အထည်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Food & Drink', 'အစားအသောက်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Places/Locations', 'နေရာ/တည်နေရာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Inanimate Objects/Things'), 'Possessions/Property', 'ပစ္စည်းဥစ္စာ/ပိုင်ဆိုင်မှု', NULL);

-- Sub-categories for 'Tools/Appliances' (Level 3) - Assuming category_id for 'Tools/Appliances' is 20
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Tools/Appliances'), 'Household Items', 'အိမ်သုံးပစ္စည်း', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Tools/Appliances'), 'Crafting Tools', 'လက်မှုပညာသုံးပစ္စည်း', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Tools/Appliances'), 'Agricultural Tools', 'စိုက်ပျိုးရေးသုံးပစ္စည်း', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Tools/Appliances'), 'Machinery', 'စက်ကိရိယာ', NULL);

-- Sub-categories for 'Vehicles/Transportation' (Level 3) - Assuming category_id for 'Vehicles/Transportation' is 21
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Vehicles/Transportation'), 'Land Transportation', 'ကုန်းကြောင်းသယ်ယူပို့ဆောင်ရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Vehicles/Transportation'), 'Water Transportation', 'ရေကြောင်းသယ်ယူပို့ဆောင်ရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Vehicles/Transportation'), 'Air Transportation', 'လေကြောင်းသယ်ယူပို့ဆောင်ရေး', NULL);

-- Sub-categories for 'Food & Drink' (Level 3) - Assuming category_id for 'Food & Drink' is 23
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Food & Drink'), 'Ingredients', 'ပါဝင်ပစ္စည်းများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Food & Drink'), 'Cooking Methods', 'ချက်ပြုတ်နည်း', NULL);

-- Sub-categories for 'Places/Locations' (Level 3) - Assuming category_id for 'Places/Locations' is 24
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Places/Locations'), 'Cities/Villages', 'မြို့/ရွာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Places/Locations'), 'Buildings', 'အဆောက်အအုံ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Places/Locations'), 'Countries', 'နိုင်ငံများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Places/Locations'), 'Regions', 'နေရာဒေသများ', NULL);

-- Sub-categories for 'Nature & Phenomena' (Level 2) - Assuming category_id for 'Nature & Phenomena' is 3
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Weather', 'ရာသီဥတု', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Geology/Geography', 'ဘူမိဗေဒ/ပထဝီဝင်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Astronomy/Space', 'နက္ခတ်ဗေဒ/အာကာသ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Natural Disasters', 'သဘာဝဘေးအန္တရာယ်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Time', 'အချိန်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Nature & Phenomena'), 'Colors', 'အရောင်များ', NULL);

-- Sub-categories for 'Geology/Geography' (Level 3) - Assuming category_id for 'Geology/Geography' is 34
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Geology/Geography'), 'Mountains/Rivers/Oceans', 'တောင်/မြစ်/ပင်လယ်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Geology/Geography'), 'Landforms', 'မြေမျက်နှာပြင်', NULL);

-- Sub-categories for 'Astronomy/Space' (Level 3) - Assuming category_id for 'Astronomy/Space' is 35
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Astronomy/Space'), 'Planets', 'ဂြိုဟ်များ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Astronomy/Space'), 'Stars', 'ကြယ်များ', NULL);

-- Sub-categories for 'Time' (Level 3) - Assuming category_id for 'Time' is 37
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Time'), 'Days/Months/Years', 'နေ့ရက်/လ/နှစ်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Time'), 'Seasons', 'ရာသီဥတုစက်ဝန်း', NULL);

-- Sub-categories for 'Knowledge & Concepts' (Level 2) - Assuming category_id for 'Knowledge & Concepts' is 4
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Education', 'ပညာရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Science & Technology', 'သိပ္ပံနှင့် နည်းပညာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Mathematics', 'သင်္ချာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Economy/Business', 'စီးပွားရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Law & Politics', 'ဥပဒေနှင့် နိုင်ငံရေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Culture & Arts', 'ယဉ်ကျေးမှုနှင့် အနုပညာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Knowledge & Concepts'), 'Abstract Concepts', 'စိတ္တဇသဘောတရားများ', NULL);

-- Sub-categories for 'Education' (Level 3) - Assuming category_id for 'Education' is 43
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Education'), 'School Subjects', 'ကျောင်းဘာသာရပ်များ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Education'), 'Teaching/Learning', 'သင်ကြားရေး', NULL);

-- Sub-categories for 'Science & Technology' (Level 3) - Assuming category_id for 'Science & Technology' is 44
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Science & Technology'), 'Physics', 'ရူပဗေဒ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Science & Technology'), 'Chemistry', 'ဓာတုဗေဒ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Science & Technology'), 'Biology', 'ဇီဝဗေဒ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Science & Technology'), 'Computers & Technology', 'ကွန်ပျူတာနှင့် နည်းပညာ', NULL);

-- Sub-categories for 'Mathematics' (Level 3) - Assuming category_id for 'Mathematics' is 45
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Mathematics'), 'Numbers', 'ကိန်းဂဏန်း', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Mathematics'), 'Measurements', 'တိုင်းတာမှု', NULL);

-- Sub-categories for 'Culture & Arts' (Level 3) - Assuming category_id for 'Culture & Arts' is 48
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Culture & Arts'), 'Music', 'ဂီတ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Culture & Arts'), 'Literature', 'စာပေ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Culture & Arts'), 'Painting', 'ပန်းချီ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Culture & Arts'), 'Language', 'ဘာသာစကား', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Culture & Arts'), 'Religion', 'ဘာသာရေး', NULL);

-- Sub-categories for 'Miscellaneous' (Level 2) - Assuming category_id for 'Miscellaneous' is 5
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Miscellaneous'), 'Verbs', 'ကြိယာများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Miscellaneous'), 'Adjectives', 'နာမဝိသေသနများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Miscellaneous'), 'Pronouns', 'နာမ်စားများ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Miscellaneous'), 'Prepositions/Conjunctions', 'ဝိဘတ်/ဆက်စပ်ပုဒ်များ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Miscellaneous'), 'Interjections/Exclamations', 'အာမေဋိတ်/ညွှန်းဆိုမှုများ', NULL);

-- Sub-categories for 'Verbs' (Level 3) - Assuming category_id for 'Verbs' is 59
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Verbs'), 'Motion', 'ရွေ့လျားမှုဆိုင်ရာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Verbs'), 'Cognition', 'အသိဉာဏ်ဆိုင်ရာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Verbs'), 'Communication', 'စကားပြောဆိုမှုဆိုင်ရာ', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Verbs'), 'Occurrence', 'ဖြစ်ပျက်မှုဆိုင်ရာ', NULL);

-- Sub-categories for 'Adjectives' (Level 3) - Assuming category_id for 'Adjectives' is 60
INSERT INTO Category (parent_category_id, en_category_name, mm_category_name, mon_category_name) VALUES
((SELECT category_id FROM Category WHERE en_category_name = 'Adjectives'), 'Size', 'အရွယ်အစား', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Adjectives'), 'Shape', 'ပုံသဏ္ဌာန်', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Adjectives'), 'Quality', 'အရည်အသွေး', NULL),
((SELECT category_id FROM Category WHERE en_category_name = 'Adjectives'), 'Condition', 'အခြေအနေ', NULL);

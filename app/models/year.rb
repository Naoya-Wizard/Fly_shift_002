class Year < ActiveHash::Base
    self.data = [
        { id: 2021, name: '2021年' },
        { id: 2022, name: '2022年' },
        { id: 2023, name: '2023年' },
        { id: 2024, name: '2024年' },
        { id: 2025, name: '2025年' },
        { id: 2026, name: '2026年' },
        { id: 2027, name: '2027年' },
        { id: 2028, name: '2028年' },
        { id: 2029, name: '2029年' },
        { id: 2030, name: '2030年' },
        { id: 2031, name: '2031年' },
        { id: 2032, name: '2032年' }
    ]
    include ActiveHash::Associations
    has_many :shifts
end